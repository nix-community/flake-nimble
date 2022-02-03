{
  description = ''Canonical JSON according to RFC8785'';
  inputs.src-canonicaljson-1_1_0.flake = false;
  inputs.src-canonicaljson-1_1_0.type = "github";
  inputs.src-canonicaljson-1_1_0.owner = "jackhftang";
  inputs.src-canonicaljson-1_1_0.repo = "canonicaljson.nim";
  inputs.src-canonicaljson-1_1_0.ref = "refs/tags/1.1.0";
  
  outputs = { self, nixpkgs, src-canonicaljson-1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-canonicaljson-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-canonicaljson-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}