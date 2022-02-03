{
  description = ''IUP FFI bindings'';
  inputs.src-niup-3_28_0.flake = false;
  inputs.src-niup-3_28_0.type = "github";
  inputs.src-niup-3_28_0.owner = "dariolah";
  inputs.src-niup-3_28_0.repo = "niup";
  inputs.src-niup-3_28_0.ref = "refs/tags/3.28.0";
  
  outputs = { self, nixpkgs, src-niup-3_28_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niup-3_28_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-niup-3_28_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}