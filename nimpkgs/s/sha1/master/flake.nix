{
  description = ''SHA-1 produces a 160-bit (20-byte) hash value from arbitrary input'';
  inputs.src-sha1-master.flake = false;
  inputs.src-sha1-master.type = "github";
  inputs.src-sha1-master.owner = "onionhammer";
  inputs.src-sha1-master.repo = "sha1";
  inputs.src-sha1-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sha1-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sha1-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sha1-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}