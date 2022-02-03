{
  description = ''IUP FFI bindings'';
  inputs.src-niup-3_27_3.flake = false;
  inputs.src-niup-3_27_3.type = "github";
  inputs.src-niup-3_27_3.owner = "dariolah";
  inputs.src-niup-3_27_3.repo = "niup";
  inputs.src-niup-3_27_3.ref = "refs/tags/3.27.3";
  
  outputs = { self, nixpkgs, src-niup-3_27_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niup-3_27_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-niup-3_27_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}