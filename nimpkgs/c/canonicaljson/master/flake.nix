{
  description = ''Canonical JSON according to RFC8785'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-canonicaljson-master.flake = false;
  inputs.src-canonicaljson-master.type = "github";
  inputs.src-canonicaljson-master.owner = "jackhftang";
  inputs.src-canonicaljson-master.repo = "canonicaljson.nim";
  inputs.src-canonicaljson-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-canonicaljson-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-canonicaljson-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-canonicaljson-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}