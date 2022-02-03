{
  description = ''Efficient object storage system'';
  inputs.src-stor-master.flake = false;
  inputs.src-stor-master.type = "github";
  inputs.src-stor-master.owner = "nimscale";
  inputs.src-stor-master.repo = "stor";
  inputs.src-stor-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-stor-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stor-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stor-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}