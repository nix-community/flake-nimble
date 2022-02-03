{
  description = ''Access bit mapped portions of bytes in binary data as int variables'';
  inputs.src-mapbits-master.flake = false;
  inputs.src-mapbits-master.type = "github";
  inputs.src-mapbits-master.owner = "jlp765";
  inputs.src-mapbits-master.repo = "mapbits";
  inputs.src-mapbits-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-mapbits-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mapbits-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mapbits-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}