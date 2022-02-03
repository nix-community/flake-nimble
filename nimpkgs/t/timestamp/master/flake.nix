{
  description = ''An alternative time library'';
  inputs.src-timestamp-master.flake = false;
  inputs.src-timestamp-master.type = "github";
  inputs.src-timestamp-master.owner = "jackhftang";
  inputs.src-timestamp-master.repo = "timestamp.nim";
  inputs.src-timestamp-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-timestamp-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timestamp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timestamp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}