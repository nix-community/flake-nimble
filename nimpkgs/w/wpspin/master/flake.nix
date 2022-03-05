{
  description = ''Full-featured WPS PIN generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-wpspin-master.flake = false;
  inputs.src-wpspin-master.type = "github";
  inputs.src-wpspin-master.owner = "drygdryg";
  inputs.src-wpspin-master.repo = "wpspin-nim";
  inputs.src-wpspin-master.ref = "refs/heads/master";
  inputs.src-wpspin-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."argparse".type = "github";
  inputs."argparse".owner = "riinr";
  inputs."argparse".repo = "flake-nimble";
  inputs."argparse".ref = "flake-pinning";
  inputs."argparse".dir = "nimpkgs/a/argparse";
  inputs."argparse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-wpspin-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wpspin-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wpspin-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}