{
  description = ''Block copy of any text in HTML'';
  inputs.src-htmlAntiCopy-master.flake = false;
  inputs.src-htmlAntiCopy-master.type = "github";
  inputs.src-htmlAntiCopy-master.owner = "thisago";
  inputs.src-htmlAntiCopy-master.repo = "htmlAntiCopy";
  inputs.src-htmlAntiCopy-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-htmlAntiCopy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-htmlAntiCopy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-htmlAntiCopy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}