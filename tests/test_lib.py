from package719.lib import whats_my_name


def test_whoami():
    res = whats_my_name()

    assert "Trouni" in res.split()
