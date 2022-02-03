{
  description = ''Nim wrapper for miniz'';
  inputs.src-nim_miniz-1_0_1.flake = false;
  inputs.src-nim_miniz-1_0_1.type = "github";
  inputs.src-nim_miniz-1_0_1.owner = "h3rald";
  inputs.src-nim_miniz-1_0_1.repo = "nim-miniz";
  inputs.src-nim_miniz-1_0_1.ref = "refs/tags/1.0.1";
  
  outputs = { self, nixpkgs, src-nim_miniz-1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_miniz-1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nim_miniz-1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}