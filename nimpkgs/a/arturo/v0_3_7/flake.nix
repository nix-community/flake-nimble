{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';
  inputs.src-arturo-v0_3_7.flake = false;
  inputs.src-arturo-v0_3_7.type = "github";
  inputs.src-arturo-v0_3_7.owner = "arturo-lang";
  inputs.src-arturo-v0_3_7.repo = "arturo";
  inputs.src-arturo-v0_3_7.ref = "refs/tags/v0.3.7";
  
  outputs = { self, nixpkgs, src-arturo-v0_3_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arturo-v0_3_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-arturo-v0_3_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}