{
  description = ''SimpleHTTPServer module based on net sockets'';
  inputs.src-NimpleHTTPServer-master.flake = false;
  inputs.src-NimpleHTTPServer-master.type = "github";
  inputs.src-NimpleHTTPServer-master.owner = "Hydra820";
  inputs.src-NimpleHTTPServer-master.repo = "NimpleHTTPServer";
  inputs.src-NimpleHTTPServer-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-NimpleHTTPServer-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-NimpleHTTPServer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-NimpleHTTPServer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}