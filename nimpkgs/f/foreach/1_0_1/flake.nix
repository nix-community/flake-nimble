{
  description = ''A sugary for loop with syntax for typechecking loop variables'';
  inputs.src-foreach-1_0_1.flake = false;
  inputs.src-foreach-1_0_1.type = "github";
  inputs.src-foreach-1_0_1.owner = "disruptek";
  inputs.src-foreach-1_0_1.repo = "foreach";
  inputs.src-foreach-1_0_1.ref = "refs/tags/1.0.1";
  
  outputs = { self, nixpkgs, src-foreach-1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-foreach-1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-foreach-1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}