#!/usr/bin/env python3

import argparse
import logging


logging.basicConfig(
    level=logging.INFO,
    datefmt="%Y-%m-%d %H:%M:%S",
    format="[%(asctime)s%(levelname)8s] %(message)s"
)
logger = logging.getLogger(__name__)




def main():
    ARGS = argparse.ArgumentParser()
    ARGS.add_argument("skeleton")
    args = ARGS.parse_args()




if __name__ == "__main__":
    main()
