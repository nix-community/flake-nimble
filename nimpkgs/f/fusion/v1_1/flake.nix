{
  description = ''Nim's official stdlib extension'';
  inputs.src-fusion-v1_1.flake = false;
  inputs.src-fusion-v1_1.type = "github";
  inputs.src-fusion-v1_1.owner = "nim-lang";
  inputs.src-fusion-v1_1.repo = "fusion";
  inputs.src-fusion-v1_1.ref = "refs/tags/v1.1";
  
  outputs = { self, nixpkgs, src-fusion-v1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fusion-v1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fusion-v1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}