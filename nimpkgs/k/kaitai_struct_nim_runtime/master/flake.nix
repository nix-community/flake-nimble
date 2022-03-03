{
  description = ''Kaitai Struct runtime library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-kaitai_struct_nim_runtime-master.flake = false;
  inputs.src-kaitai_struct_nim_runtime-master.type = "github";
  inputs.src-kaitai_struct_nim_runtime-master.owner = "kaitai-io";
  inputs.src-kaitai_struct_nim_runtime-master.repo = "kaitai_struct_nim_runtime";
  inputs.src-kaitai_struct_nim_runtime-master.ref = "refs/heads/master";
  inputs.src-kaitai_struct_nim_runtime-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-kaitai_struct_nim_runtime-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kaitai_struct_nim_runtime-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-kaitai_struct_nim_runtime-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}