{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';
  inputs.src-arturo-v0_9_75.flake = false;
  inputs.src-arturo-v0_9_75.type = "github";
  inputs.src-arturo-v0_9_75.owner = "arturo-lang";
  inputs.src-arturo-v0_9_75.repo = "arturo";
  inputs.src-arturo-v0_9_75.ref = "refs/tags/v0.9.75";
  
  outputs = { self, nixpkgs, src-arturo-v0_9_75, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arturo-v0_9_75;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-arturo-v0_9_75"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}