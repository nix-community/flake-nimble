{
  description = ''An efficient HTTP tool suite written in pure nim. Help you to write HTTP services or clients via TCP, UDP, or even Unix Domain socket, etc.'';
  inputs.src-httpkit-master.flake = false;
  inputs.src-httpkit-master.type = "github";
  inputs.src-httpkit-master.owner = "tulayang";
  inputs.src-httpkit-master.repo = "httpkit";
  inputs.src-httpkit-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-httpkit-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpkit-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-httpkit-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}