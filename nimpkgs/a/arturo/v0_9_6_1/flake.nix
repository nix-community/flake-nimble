{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';
  inputs.src-arturo-v0_9_6_1.flake = false;
  inputs.src-arturo-v0_9_6_1.type = "github";
  inputs.src-arturo-v0_9_6_1.owner = "arturo-lang";
  inputs.src-arturo-v0_9_6_1.repo = "arturo";
  inputs.src-arturo-v0_9_6_1.ref = "refs/tags/v0.9.6.1";
  
  outputs = { self, nixpkgs, src-arturo-v0_9_6_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arturo-v0_9_6_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-arturo-v0_9_6_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}