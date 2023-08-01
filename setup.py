'''
This sample project illustrates the default the configuration for a REPRO for developing
and packaging a Python package.
'''

from setuptools import setup, find_packages

setup(
    name='sample',
    version='0.1',
    description='Sample REPRO-managed Python Project',
    author='Timothy McPhillips',
    author_email='tmcphill@illinois.edu',
    url='https://github.com/repros-dev/python-dev',
    packages=find_packages("src"),
    license='MIT',
     classifiers=[
        'Development Status :: 3 - Alpha',
        'Intended Audience :: Science/Research',
		'Intended Audience :: Developers',
    ],
)