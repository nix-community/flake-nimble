{
  description = ''Canonical JSON according to RFC8785'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-canonicaljson-master.flake = false;
  inputs.src-canonicaljson-master.type = "github";
  inputs.src-canonicaljson-master.owner = "jackhftang";
  inputs.src-canonicaljson-master.repo = "canonicaljson.nim";
  inputs.src-canonicaljson-master.ref = "refs/heads/master";
  inputs.src-canonicaljson-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-canonicaljson-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-canonicaljson-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-canonicaljson-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}