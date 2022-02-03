{
  description = ''A Nim wrapper for librtlsdr'';
  inputs.src-nimrtlsdr-master.flake = false;
  inputs.src-nimrtlsdr-master.type = "github";
  inputs.src-nimrtlsdr-master.owner = "jpoirier";
  inputs.src-nimrtlsdr-master.repo = "nimrtlsdr";
  inputs.src-nimrtlsdr-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimrtlsdr-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrtlsdr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimrtlsdr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}