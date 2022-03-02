{
  description = ''KWin JavaScript API wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-kwin-master.flake = false;
  inputs.src-kwin-master.type = "github";
  inputs.src-kwin-master.owner = "reactormonk";
  inputs.src-kwin-master.repo = "nim-kwin";
  inputs.src-kwin-master.ref = "refs/heads/master";
  inputs.src-kwin-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-kwin-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kwin-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-kwin-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}