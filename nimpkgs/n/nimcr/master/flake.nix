{
  description = ''A small program to make Nim shebang-able without the overhead of compiling each time'';
  inputs.src-nimcr-master.flake = false;
  inputs.src-nimcr-master.type = "github";
  inputs.src-nimcr-master.owner = "PMunch";
  inputs.src-nimcr-master.repo = "nimcr";
  inputs.src-nimcr-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimcr-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimcr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}