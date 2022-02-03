{
  description = ''Canonical JSON according to RFC8785'';
  inputs.src-canonicaljson-1_1_2.flake = false;
  inputs.src-canonicaljson-1_1_2.type = "github";
  inputs.src-canonicaljson-1_1_2.owner = "jackhftang";
  inputs.src-canonicaljson-1_1_2.repo = "canonicaljson.nim";
  inputs.src-canonicaljson-1_1_2.ref = "refs/tags/1.1.2";
  
  outputs = { self, nixpkgs, src-canonicaljson-1_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-canonicaljson-1_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-canonicaljson-1_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}