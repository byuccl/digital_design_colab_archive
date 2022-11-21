import pathlib
import re


ROOT_PATH = pathlib.Path(__file__).parent.parent.parent.resolve()

IGNORED_PATHS = (r"\.git*", r"\.github*")

SKIP_EXTENSIONS = (".png", ".svg", ".jpg")

REPLACED_STR = (
    ("/byuccl/", "/anon36424/"),
    ("/westonMS/", "/anon36424/"),
    ("Brigham Young", "X"),
    ("BYU", "X"),
)


def main():
    for f in ROOT_PATH.glob("**/*"):
        skip = False
        for ignored in IGNORED_PATHS:
            if re.match(ignored, str(f.relative_to(ROOT_PATH))):
                skip = True
                break
        if skip:
            continue
        if not f.is_file():
            continue
        if f.suffix.lower() in SKIP_EXTENSIONS:
            continue

        print(f)
        txt = f.open(newline="").read()

        # Process file text
        for find, replace in REPLACED_STR:
            txt = re.sub(find, replace, txt)

        with open(f, "w") as f:
            f.write(txt)


if __name__ == "__main__":
    main()
