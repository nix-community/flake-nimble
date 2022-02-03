{
  description = ''LibFixMath 16:16 fixed point support for nim'';
  inputs.src-fixmath-master.flake = false;
  inputs.src-fixmath-master.type = "github";
  inputs.src-fixmath-master.owner = "Jeff-Ciesielski";
  inputs.src-fixmath-master.repo = "fixmath";
  inputs.src-fixmath-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fixmath-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fixmath-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fixmath-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}