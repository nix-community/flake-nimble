{
  description = ''Full-featured WPS PIN generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-wpspin-0_5_1.flake = false;
  inputs.src-wpspin-0_5_1.type = "github";
  inputs.src-wpspin-0_5_1.owner = "drygdryg";
  inputs.src-wpspin-0_5_1.repo = "wpspin-nim";
  inputs.src-wpspin-0_5_1.ref = "refs/tags/0.5.1";
  
  
  inputs."argparse".type = "github";
  inputs."argparse".owner = "riinr";
  inputs."argparse".repo = "flake-nimble";
  inputs."argparse".ref = "flake-pinning";
  inputs."argparse".dir = "nimpkgs/a/argparse";

  outputs = { self, nixpkgs, flakeNimbleLib, src-wpspin-0_5_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wpspin-0_5_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wpspin-0_5_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}