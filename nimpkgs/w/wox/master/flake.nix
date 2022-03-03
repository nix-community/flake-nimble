{
  description = ''Helper library for writing Wox plugins in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-wox-master.flake = false;
  inputs.src-wox-master.type = "github";
  inputs.src-wox-master.owner = "roose";
  inputs.src-wox-master.repo = "nim-wox";
  inputs.src-wox-master.ref = "refs/heads/master";
  inputs.src-wox-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."unicodeplus".type = "github";
  # inputs."unicodeplus".owner = "riinr";
  # inputs."unicodeplus".repo = "flake-nimble";
  # inputs."unicodeplus".ref = "flake-pinning";
  # inputs."unicodeplus".dir = "nimpkgs/u/unicodeplus";
  # inputs."unicodeplus".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."unicodeplus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-wox-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wox-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wox-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}