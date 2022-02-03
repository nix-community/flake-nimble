{
  description = ''A package to compile nim functions for AWS Lambda'';
  inputs.src-awslambda-master.flake = false;
  inputs.src-awslambda-master.type = "github";
  inputs.src-awslambda-master.owner = "lambci";
  inputs.src-awslambda-master.repo = "awslambda.nim";
  inputs.src-awslambda-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-awslambda-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-awslambda-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-awslambda-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}