{
  description = ''Nim wrapper for distorm3 - Powerful Disassembler Library For x86/AMD64'';
  inputs.src-distorm3-3_5_2.flake = false;
  inputs.src-distorm3-3_5_2.type = "github";
  inputs.src-distorm3-3_5_2.owner = "ba0f3";
  inputs.src-distorm3-3_5_2.repo = "distorm3.nim";
  inputs.src-distorm3-3_5_2.ref = "refs/tags/3.5.2";
  
  outputs = { self, nixpkgs, src-distorm3-3_5_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-distorm3-3_5_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-distorm3-3_5_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}