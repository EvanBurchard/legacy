import os
from setuptools import setup

# Set external files
README = open(os.path.join(os.path.dirname(__file__), 'README.rst')).read()
with open(os.path.join(os.path.dirname(__file__), 'requirements.txt')) as f:
    required = f.read().splitlines()

# allow setup.py to be run from any path
os.chdir(os.path.normpath(os.path.join(os.path.abspath(__file__), os.pardir)))

setup(
    name='legacy',
    version='0.1.0',
    packages=['legacy'],
    install_requires=required,
    include_package_data=True,
    license='MIT License',
    description='Legacy, wow',
    long_description=README,
    url='https://github.com/EvanBurchard/legacy',
    author='Legacy Authors',
    classifiers=[
        'Environment :: Console',
        'License :: OSI Approved :: Apache Software License',
        'Operating System :: OS Independent',
        'Topic :: Internet :: WWW/HTTP',
        'Topic :: Internet :: WWW/HTTP :: Dynamic Content',
    ],
)
