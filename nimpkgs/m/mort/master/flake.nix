{
  description = ''A dead code locator for Nim'';
  inputs.src-mort-master.flake = false;
  inputs.src-mort-master.type = "github";
  inputs.src-mort-master.owner = "jyapayne";
  inputs.src-mort-master.repo = "mort";
  inputs.src-mort-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-mort-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mort-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mort-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}