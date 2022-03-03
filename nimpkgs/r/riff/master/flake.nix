{
  description = ''RIFF file handling for Nim '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-riff-master.flake = false;
  inputs.src-riff-master.type = "github";
  inputs.src-riff-master.owner = "johnnovak";
  inputs.src-riff-master.repo = "nim-riff";
  inputs.src-riff-master.ref = "refs/heads/master";
  inputs.src-riff-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."binstreams".type = "github";
  # inputs."binstreams".owner = "riinr";
  # inputs."binstreams".repo = "flake-nimble";
  # inputs."binstreams".ref = "flake-pinning";
  # inputs."binstreams".dir = "nimpkgs/b/binstreams";
  # inputs."binstreams".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."binstreams".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-riff-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-riff-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-riff-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}