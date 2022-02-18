{
  description = ''Canonical JSON according to RFC8785'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-canonicaljson-1_1_1.flake = false;
  inputs.src-canonicaljson-1_1_1.type = "github";
  inputs.src-canonicaljson-1_1_1.owner = "jackhftang";
  inputs.src-canonicaljson-1_1_1.repo = "canonicaljson.nim";
  inputs.src-canonicaljson-1_1_1.ref = "refs/tags/1.1.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-canonicaljson-1_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-canonicaljson-1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-canonicaljson-1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}