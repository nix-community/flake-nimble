{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';
  inputs.src-arturo-0_9_4.flake = false;
  inputs.src-arturo-0_9_4.type = "github";
  inputs.src-arturo-0_9_4.owner = "arturo-lang";
  inputs.src-arturo-0_9_4.repo = "arturo";
  inputs.src-arturo-0_9_4.ref = "refs/tags/0.9.4";
  
  outputs = { self, nixpkgs, src-arturo-0_9_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arturo-0_9_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-arturo-0_9_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}