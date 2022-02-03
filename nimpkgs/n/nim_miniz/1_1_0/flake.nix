{
  description = ''Nim wrapper for miniz'';
  inputs.src-nim_miniz-1_1_0.flake = false;
  inputs.src-nim_miniz-1_1_0.type = "github";
  inputs.src-nim_miniz-1_1_0.owner = "h3rald";
  inputs.src-nim_miniz-1_1_0.repo = "nim-miniz";
  inputs.src-nim_miniz-1_1_0.ref = "refs/tags/1.1.0";
  
  outputs = { self, nixpkgs, src-nim_miniz-1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_miniz-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nim_miniz-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}