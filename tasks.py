from __future__ import print_function
from invoke import task, Collection
import platform
import os
import urllib.request
from pathlib import Path


@task
def install_neovim(c):
    """Install neovim.  Assuming you are using either ubuntu 18.04 or later (or derived)
    or a darwin system with homebrew installed
    """
    if platform.system() == "Linux":
        print("Assuming 18.04 or later ubuntu based. which is dumb i know")
        c.run("sudo apt install neovim python-neovim python3-neovim -y")
    if platform.system() == "Darwin":
        print("installing from brew. Some testing required")
        c.run("brew install neovim")
        c.run("brew install python2")
        c.run("brew install python3")
        # This... is what used to work? now may be spelled `pynvim`
        c.run("pip2 install --user neovim")
        c.run("pip3 install --user neovim")


@task
def install_dein(
    c,
    dein_installer="https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh",
):
    data_dir = get_data_dir()
    local_filename, _ = urllib.request.urlretrieve(
        dein_installer, filename="install.sh"
    )
    c.run("sh {} {}".format(local_filename, data_dir))

    # Render the things
    with Path("./nvim/init.vim").open("w") as init_fd:
        init_fd.write(render_init_vim(data_dir))

    with Path("./nvim/common_config/01_plugin_config.vim").open("w") as plugin_fd:
        plugin_fd.write(render_plugin_file(data_dir))

    print("Running vim to setup")
    c.run("nvim -c :UpdateRemotePlugins")


@task(pre=[install_neovim], post=[install_dein], help={"nvim": "install nvim as well"})
def install(c, target=None):
    """
    install the platform and setup dein etc
    """
    result = c.run("nvim --version", hide="out")
    cfg_dir = get_config_dir()

    if platform.system() not in ["Linux", "Darwin"]:
        print("on platform %s: not supported" % platform.system())
    if "NVIM" not in result.stdout:
        raise Exception("Only works with nvim right now")

    print("linking configs")
    target = Path.cwd() / "nvim"
    cfg_dir.symlink_to(target)
    print(cfg_dir)


def get_config_dir():
    if platform.system() == "Linux":
        return Path(os.environ.get("XDG_CONFIG_HOME", Path.home() / ".config")) / "nvim"
    if platform.system() == "Darwin":
        return Path(os.environ.get("XDG_CONFIG_HOME", Path.home() / ".config")) / "nvim"


def get_data_dir():
    if platform.system() == "Linux":
        return (
            Path(os.environ.get("XDG_DATA_HOME", Path.home() / ".local/share")) / "dein"
        )
    if platform.system() == "Darwin":
        return (
            Path(os.environ.get("XDG_DATA_HOME", Path.home() / ".local/share")) / "dein"
        )


def render_init_vim(data_dir):
    with open("init.tmpl", "r") as fd:
        plugin_config = fd.read()
        return plugin_config.format(datapath=data_dir)


def render_plugin_file(data_dir):
    with open("01_plugin_config.tmpl", "r") as fd:
        init_file = fd.read()
        return init_file.format(datapath=data_dir)
