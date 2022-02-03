{
  description = ''This library makes your code run as a daemon process on Unix-like systems'';
  inputs.src-daemonize-0_0_3.flake = false;
  inputs.src-daemonize-0_0_3.type = "github";
  inputs.src-daemonize-0_0_3.owner = "OpenSystemsLab";
  inputs.src-daemonize-0_0_3.repo = "daemonize.nim";
  inputs.src-daemonize-0_0_3.ref = "refs/tags/0.0.3";
  
  outputs = { self, nixpkgs, src-daemonize-0_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-daemonize-0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-daemonize-0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}