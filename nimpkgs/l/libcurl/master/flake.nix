{
  description = ''Nim wrapper for libcurl.'';
  inputs.src-libcurl-master.flake = false;
  inputs.src-libcurl-master.type = "github";
  inputs.src-libcurl-master.owner = "Araq";
  inputs.src-libcurl-master.repo = "libcurl";
  inputs.src-libcurl-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libcurl-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libcurl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libcurl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}