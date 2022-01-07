{
  description = ''
    Parse fixed-width fields within lines of text (complementary to parsecsv)
  '';
  inputs.src-parseFixed.url = "https://github.com/jlp765/parsefixed";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
