{
  description = ''UUIDs in pure Nim'';
  inputs.src-uuid4-main.flake = false;
  inputs.src-uuid4-main.type = "github";
  inputs.src-uuid4-main.owner = "vtbassmatt";
  inputs.src-uuid4-main.repo = "nim-uuid4";
  inputs.src-uuid4-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-uuid4-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uuid4-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-uuid4-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}