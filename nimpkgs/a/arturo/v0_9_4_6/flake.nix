{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';
  inputs.src-arturo-v0_9_4_6.flake = false;
  inputs.src-arturo-v0_9_4_6.type = "github";
  inputs.src-arturo-v0_9_4_6.owner = "arturo-lang";
  inputs.src-arturo-v0_9_4_6.repo = "arturo";
  inputs.src-arturo-v0_9_4_6.ref = "refs/tags/v0.9.4.6";
  
  outputs = { self, nixpkgs, src-arturo-v0_9_4_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arturo-v0_9_4_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-arturo-v0_9_4_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}