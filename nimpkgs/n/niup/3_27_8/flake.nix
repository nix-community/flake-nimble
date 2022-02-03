{
  description = ''IUP FFI bindings'';
  inputs.src-niup-3_27_8.flake = false;
  inputs.src-niup-3_27_8.type = "github";
  inputs.src-niup-3_27_8.owner = "dariolah";
  inputs.src-niup-3_27_8.repo = "niup";
  inputs.src-niup-3_27_8.ref = "refs/tags/3.27.8";
  
  outputs = { self, nixpkgs, src-niup-3_27_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niup-3_27_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-niup-3_27_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}