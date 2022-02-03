{
  description = ''Full-featured WPS PIN generator'';
  inputs.src-wpspin-0_5_0.flake = false;
  inputs.src-wpspin-0_5_0.type = "github";
  inputs.src-wpspin-0_5_0.owner = "drygdryg";
  inputs.src-wpspin-0_5_0.repo = "wpspin-nim";
  inputs.src-wpspin-0_5_0.ref = "refs/tags/0.5.0";
  
  
  inputs."argparse".url = "path:../../../a/argparse";
  inputs."argparse".type = "github";
  inputs."argparse".owner = "riinr";
  inputs."argparse".repo = "flake-nimble";
  inputs."argparse".ref = "flake-pinning";
  inputs."argparse".dir = "nimpkgs/a/argparse";

  outputs = { self, nixpkgs, src-wpspin-0_5_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wpspin-0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wpspin-0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}