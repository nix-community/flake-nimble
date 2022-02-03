{
  description = ''IUP FFI bindings'';
  inputs.src-niup-3_27_1.flake = false;
  inputs.src-niup-3_27_1.type = "github";
  inputs.src-niup-3_27_1.owner = "dariolah";
  inputs.src-niup-3_27_1.repo = "niup";
  inputs.src-niup-3_27_1.ref = "refs/tags/3.27.1";
  
  outputs = { self, nixpkgs, src-niup-3_27_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niup-3_27_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-niup-3_27_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}