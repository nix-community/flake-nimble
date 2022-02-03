{
  description = ''A simple decimal library'';
  inputs.src-simpledecimal-master.flake = false;
  inputs.src-simpledecimal-master.type = "github";
  inputs.src-simpledecimal-master.owner = "pigmej";
  inputs.src-simpledecimal-master.repo = "nim-simple-decimal";
  inputs.src-simpledecimal-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-simpledecimal-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpledecimal-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simpledecimal-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}