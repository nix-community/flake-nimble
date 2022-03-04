{
  description = ''PLZ Python PIP alternative'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-plz-master.flake = false;
  inputs.src-plz-master.type = "github";
  inputs.src-plz-master.owner = "juancarlospaco";
  inputs.src-plz-master.repo = "nim-pypi";
  inputs.src-plz-master.ref = "refs/heads/master";
  inputs.src-plz-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."requirementstxt".type = "github";
  inputs."requirementstxt".owner = "riinr";
  inputs."requirementstxt".repo = "flake-nimble";
  inputs."requirementstxt".ref = "flake-pinning";
  inputs."requirementstxt".dir = "nimpkgs/r/requirementstxt";
  inputs."requirementstxt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."requirementstxt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-plz-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plz-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-plz-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}