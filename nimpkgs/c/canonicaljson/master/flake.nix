{
  description = ''Canonical JSON according to RFC8785'';
  inputs.src-canonicaljson-master.flake = false;
  inputs.src-canonicaljson-master.type = "github";
  inputs.src-canonicaljson-master.owner = "jackhftang";
  inputs.src-canonicaljson-master.repo = "canonicaljson.nim";
  inputs.src-canonicaljson-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-canonicaljson-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-canonicaljson-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-canonicaljson-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}