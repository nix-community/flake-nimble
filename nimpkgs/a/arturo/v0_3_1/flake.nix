{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';
  inputs.src-arturo-v0_3_1.flake = false;
  inputs.src-arturo-v0_3_1.type = "github";
  inputs.src-arturo-v0_3_1.owner = "arturo-lang";
  inputs.src-arturo-v0_3_1.repo = "arturo";
  inputs.src-arturo-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-arturo-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arturo-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-arturo-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}