{
  description = ''Bindings for picohttpparser.'';
  inputs.src-picohttpparser-master.flake = false;
  inputs.src-picohttpparser-master.type = "github";
  inputs.src-picohttpparser-master.owner = "philip-wernersbach";
  inputs.src-picohttpparser-master.repo = "nim-picohttpparser";
  inputs.src-picohttpparser-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-picohttpparser-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-picohttpparser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-picohttpparser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}