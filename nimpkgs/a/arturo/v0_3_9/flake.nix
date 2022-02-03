{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';
  inputs.src-arturo-v0_3_9.flake = false;
  inputs.src-arturo-v0_3_9.type = "github";
  inputs.src-arturo-v0_3_9.owner = "arturo-lang";
  inputs.src-arturo-v0_3_9.repo = "arturo";
  inputs.src-arturo-v0_3_9.ref = "refs/tags/v0.3.9";
  
  outputs = { self, nixpkgs, src-arturo-v0_3_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arturo-v0_3_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-arturo-v0_3_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}