{
  description = ''Kaitai Struct runtime library for Nim'';
  inputs.src-kaitai_struct_nim_runtime-0_9.flake = false;
  inputs.src-kaitai_struct_nim_runtime-0_9.type = "github";
  inputs.src-kaitai_struct_nim_runtime-0_9.owner = "kaitai-io";
  inputs.src-kaitai_struct_nim_runtime-0_9.repo = "kaitai_struct_nim_runtime";
  inputs.src-kaitai_struct_nim_runtime-0_9.ref = "refs/tags/0.9";
  
  outputs = { self, nixpkgs, src-kaitai_struct_nim_runtime-0_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kaitai_struct_nim_runtime-0_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-kaitai_struct_nim_runtime-0_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}