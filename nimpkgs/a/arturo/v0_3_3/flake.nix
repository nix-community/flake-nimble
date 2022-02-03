{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';
  inputs.src-arturo-v0_3_3.flake = false;
  inputs.src-arturo-v0_3_3.type = "github";
  inputs.src-arturo-v0_3_3.owner = "arturo-lang";
  inputs.src-arturo-v0_3_3.repo = "arturo";
  inputs.src-arturo-v0_3_3.ref = "refs/tags/v0.3.3";
  
  outputs = { self, nixpkgs, src-arturo-v0_3_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arturo-v0_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-arturo-v0_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}