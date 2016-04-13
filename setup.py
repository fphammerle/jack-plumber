from setuptools import setup

import glob

setup(
    name = 'jack-plumber',
    version = '0.1',
    description = 'Automatically rename and connect ports registered in JACK Audio Server',
    author = 'Fabian Peter Hammerle',
    author_email = 'fabian.hammerle@gmail.com',
    url = 'https://github.com/fphammerle/jack-plumber',
    download_url = 'https://github.com/fphammerle/jack-plumber/tarball/0.1',
    keywords = ['audio', 'jack'],
    classifiers = [],
    scripts = glob.glob('scripts/*'),
    install_requires = ['jacker>=0.3.1', 'ioex>=0.3'],
    tests_require = ['pytest']
    )
