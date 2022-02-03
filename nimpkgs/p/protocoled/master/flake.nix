{
  description = ''an interface macro'';
  inputs.src-protocoled-master.flake = false;
  inputs.src-protocoled-master.type = "github";
  inputs.src-protocoled-master.owner = "planetis-m";
  inputs.src-protocoled-master.repo = "protocoled";
  inputs.src-protocoled-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-protocoled-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-protocoled-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-protocoled-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}