{
  description = ''A simple string templating library for Nim.'';
  inputs.src-templates-master.flake = false;
  inputs.src-templates-master.type = "github";
  inputs.src-templates-master.owner = "onionhammer";
  inputs.src-templates-master.repo = "nim-templates";
  inputs.src-templates-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-templates-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-templates-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-templates-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}